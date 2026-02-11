package com.demo.config;

import com.demo.service.CustomUserDetailsService;
import com.demo.service.adminServiceImpl;
import java.util.Collection;
import lombok.AllArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.LogoutConfigurer;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.LoginUrlAuthenticationEntryPoint;

@Configuration
@EnableWebSecurity
@AllArgsConstructor
public class Config {

  private final CustomUserDetailsService customUserDetailsService;

  @Bean
  public SecurityFilterChain filterChain(HttpSecurity security)
    throws Exception {
    security
      .csrf(csrf -> csrf.disable())
      .authorizeHttpRequests(auth ->
        auth
          .requestMatchers("/login")
          .permitAll()
          .requestMatchers("/user/login")
          .permitAll()
          .requestMatchers("/user/reg")
          .permitAll()
          .requestMatchers("/user")
          .permitAll()
          .requestMatchers("/WEB-INF/jsp/**")
          .permitAll()
          .requestMatchers("/css/**")
          .permitAll()
          .requestMatchers("/resources/images/**")
          .permitAll()
          .requestMatchers("/user/**")
          .hasRole("USER")
          .requestMatchers("/login/**")
          .hasRole("ADMIN")
          .anyRequest()
          .authenticated()
      );

    security.logout(logout ->
      logout
        .logoutUrl("/logout")
        .logoutSuccessHandler((request, response, auth) -> {
          if (auth != null) {
            for (GrantedAuthority authority : auth.getAuthorities()) {
              if (authority.getAuthority().equals("ROLE_USER")) {
                response.sendRedirect("user/login");
                return;
              } else if (authority.getAuthority().equals("ROLE_ADMIN")) {
                response.sendRedirect("/login");
                return;
              }
            }
          }
          response.sendRedirect("/login?logout");
        })
        .clearAuthentication(true)
        .invalidateHttpSession(true)
        .permitAll()
    );

    security.exceptionHandling(ex ->
      ex.authenticationEntryPoint(
        new LoginUrlAuthenticationEntryPoint("/login")
      )
    );
    return security.build();
  }

  @Bean
  public AuthenticationManager authenticn(AuthenticationConfiguration config) {
    return config.getAuthenticationManager();
  }

  @Bean
  public DaoAuthenticationProvider authenticationProvider(
    PasswordEncoder encoder
  ) {
    DaoAuthenticationProvider authenticationProvider =
      new DaoAuthenticationProvider(customUserDetailsService);
    authenticationProvider.setPasswordEncoder(encoder);

    return authenticationProvider;
  }
}
