package com.demo.service;

import com.demo.dao.AdminRepository;
import org.springframework.aot.generate.Generated;
import org.springframework.beans.factory.aot.BeanInstanceSupplier;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.RootBeanDefinition;

/**
 * Bean definitions for {@link adminServiceImpl}.
 */
@Generated
public class adminServiceImpl__BeanDefinitions {
  /**
   * Get the bean instance supplier for 'adminServiceImpl'.
   */
  private static BeanInstanceSupplier<adminServiceImpl> getAdminServiceImplInstanceSupplier() {
    return BeanInstanceSupplier.<adminServiceImpl>forConstructor(AdminRepository.class)
            .withGenerator((registeredBean, args) -> new adminServiceImpl(args.get(0)));
  }

  /**
   * Get the bean definition for 'adminServiceImpl'.
   */
  public static BeanDefinition getAdminServiceImplBeanDefinition() {
    RootBeanDefinition beanDefinition = new RootBeanDefinition(adminServiceImpl.class);
    beanDefinition.setInstanceSupplier(getAdminServiceImplInstanceSupplier());
    return beanDefinition;
  }
}
