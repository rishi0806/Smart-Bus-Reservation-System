package com.demo.controller;

import com.demo.service.RouteService;
import org.springframework.aot.generate.Generated;
import org.springframework.beans.factory.aot.BeanInstanceSupplier;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.RootBeanDefinition;

/**
 * Bean definitions for {@link RoutesController}.
 */
@Generated
public class RoutesController__BeanDefinitions {
  /**
   * Get the bean instance supplier for 'routesController'.
   */
  private static BeanInstanceSupplier<RoutesController> getRoutesControllerInstanceSupplier() {
    return BeanInstanceSupplier.<RoutesController>forConstructor(RouteService.class)
            .withGenerator((registeredBean, args) -> new RoutesController(args.get(0)));
  }

  /**
   * Get the bean definition for 'routesController'.
   */
  public static BeanDefinition getRoutesControllerBeanDefinition() {
    RootBeanDefinition beanDefinition = new RootBeanDefinition(RoutesController.class);
    beanDefinition.setInstanceSupplier(getRoutesControllerInstanceSupplier());
    return beanDefinition;
  }
}
