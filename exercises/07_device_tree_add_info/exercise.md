# Device Tree Editing Exercise

## Goal
Modify a BCM2835-based board's device tree to add I2C peripherals and advanced configurations

## Initial Device Tree

Is in the folder of the exercise.

## Basic Tasks
1. Add TMP102 temperature sensor at I2C address 0x48
2. Increase I2C bus speed to 400KHz
3. Configure I2C pins (SDA: GPIO2, SCL: GPIO3)

## Advanced Tasks
4. Add 24C32 EEPROM at I2C address 0x50
5. Configure runtime power management for I2C bus
6. Add GPIO interrupt handling for TMP102's ALERT pin (GPIO4)
7. Configure I2C bus timing parameters:
   - Setup time: 100ns
   - Hold time: 300ns
8. Create device aliases for easy reference
9. Create a device tree overlay version

## Extra Challenges
10. Add I2C bus voltage and pull-up configuration
11. Implement bus recovery on GPIO pins
12. Configure TMP102 in extended mode (+150C range)
13. Add power sequencing dependencies

## Validation
Use device-tree-compiler (dtc) to verify syntax:
```bash
sudo apt-get install device-tree-compiler
dtc -I dts -O dtb -o test.dtb devicetree-exercise.dts
```

## Expected Skills
* Understanding device tree syntax
* Knowledge of I2C device configuration
* Basic pinmux configuration
* Device tree debugging using dtc
* Power management concepts
* Device tree overlay creation

## Additional Resources
* [Device Tree Specification](https://www.devicetree.org/specifications/)
* [BCM2835 Datasheet](https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2835/BCM2835-ARM-Peripherals.pdf)
* [TMP102 Datasheet](https://www.ti.com/lit/ds/symlink/tmp102.pdf)
* [24C32 Datasheet](https://ww1.microchip.com/downloads/en/DeviceDoc/doc0336.pdf)
* [Device Tree Overlays](https://www.kernel.org/doc/html/latest/devicetree/overlay-notes.html)

## Solution Checklist
- [ ] Basic I2C configuration
- [ ] Sensor nodes added
- [ ] Pin configuration
- [ ] Interrupt handling
- [ ] Power management
- [ ] Timing parameters
- [ ] Device aliases
- [ ] Overlay version