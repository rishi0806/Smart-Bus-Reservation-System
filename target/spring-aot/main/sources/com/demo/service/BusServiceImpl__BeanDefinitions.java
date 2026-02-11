package com.demo.service;

import com.demo.dao.BusRepository;
import com.demo.dao.RoutesRepository;
import org.springframework.aot.generate.Generated;
import org.springframework.beans.factory.aot.BeanInstanceSupplier;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.RootBeanDefinition;

/**
 * Bean definitions for {@link BusServiceImpl}.
 */
@Generated
public class BusServiceImpl__BeanDefinitions {
  /**
   * Get the bean instance supplier for 'busServiceImpl'.
   */
  private static BeanInstanceSupplier<BusServiceImpl> getBusServiceImplInstanceSupplier() {
    return BeanInstanceSupplier.<BusServiceImpl>forConstructor(BusRepository.class, RoutesRepository.class)
            .withGenerator((registeredBean, args) -> new BusServiceImpl(args.get(0), args.get(1)));
  }

  /**
   * Get the bean definition for 'busServiceImpl'.
   */
  public static BeanDefinition getBusServiceImplBeanDefinition() {
    RootBeanDefinition beanDefinition = new RootBeanDefinition(BusServiceImpl.class);
    beanDefinition.setInstanceSupplier(getBusServiceImplInstanceSupplier());
    return beanDefinition;
  }
}
