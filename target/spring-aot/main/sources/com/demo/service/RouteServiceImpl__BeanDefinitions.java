package com.demo.service;

import com.demo.dao.RoutesRepository;
import org.springframework.aot.generate.Generated;
import org.springframework.beans.factory.aot.BeanInstanceSupplier;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.RootBeanDefinition;

/**
 * Bean definitions for {@link RouteServiceImpl}.
 */
@Generated
public class RouteServiceImpl__BeanDefinitions {
  /**
   * Get the bean instance supplier for 'routeServiceImpl'.
   */
  private static BeanInstanceSupplier<RouteServiceImpl> getRouteServiceImplInstanceSupplier() {
    return BeanInstanceSupplier.<RouteServiceImpl>forConstructor(RoutesRepository.class)
            .withGenerator((registeredBean, args) -> new RouteServiceImpl(args.get(0)));
  }

  /**
   * Get the bean definition for 'routeServiceImpl'.
   */
  public static BeanDefinition getRouteServiceImplBeanDefinition() {
    RootBeanDefinition beanDefinition = new RootBeanDefinition(RouteServiceImpl.class);
    beanDefinition.setInstanceSupplier(getRouteServiceImplInstanceSupplier());
    return beanDefinition;
  }
}
