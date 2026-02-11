package com.demo;

import org.springframework.aot.generate.Generated;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.RootBeanDefinition;

/**
 * Bean definitions for {@link BusreservationsystemApplication}.
 */
@Generated
public class BusreservationsystemApplication__BeanDefinitions {
  /**
   * Get the bean definition for 'busreservationsystemApplication'.
   */
  public static BeanDefinition getBusreservationsystemApplicationBeanDefinition() {
    RootBeanDefinition beanDefinition = new RootBeanDefinition(BusreservationsystemApplication.class);
    beanDefinition.setInstanceSupplier(BusreservationsystemApplication::new);
    return beanDefinition;
  }
}
