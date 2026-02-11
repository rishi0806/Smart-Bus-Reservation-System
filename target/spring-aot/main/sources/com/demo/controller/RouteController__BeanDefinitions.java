package com.demo.controller;

import org.springframework.aot.generate.Generated;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.RootBeanDefinition;

/**
 * Bean definitions for {@link RouteController}.
 */
@Generated
public class RouteController__BeanDefinitions {
  /**
   * Get the bean definition for 'routeController'.
   */
  public static BeanDefinition getRouteControllerBeanDefinition() {
    RootBeanDefinition beanDefinition = new RootBeanDefinition(RouteController.class);
    beanDefinition.setInstanceSupplier(RouteController::new);
    return beanDefinition;
  }
}
