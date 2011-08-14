/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.types;

/**
 * These are things the characters carry.  They can be given during
 * conversations, found in containers, found on corpses.
 * They can be required to interactive with objects, or to open
 * conversation paths.
 * They can be viewed in the inventory, and equipped (if equippable)
 * They do NOT have pictures, just names.
 * There can be infinite instances of any one of these things.
 *
 * @author cternent
 */
public class GameObject {

    public static final int EQUIPS_ON_HEAD = 0;
    public static final int EQUIPS_ON_TORSO = 1;
    public static final int EQUIPS_ON_ARMS = 2;
    public static final int EQUIPS_ON_HANDS = 3;
    public static final int EQUIPS_ON_LEGS = 4;
    public static final int EQUIPS_ON_FEET = 5;

    private Integer id;
    private String name;
    private String description;
    private Integer value;
    private boolean equippable;
    private boolean armour;
    private boolean weapon;
    private boolean cursed;
    private boolean consumable;
    private boolean usedInCombat;
    private Integer observationMod;
    private Integer strengthMod;
    private Integer intelligenceMod;
    private Integer agilityMod;
    private Integer charmMod;
    private Integer healthMod;
    private Integer damageMod;
    private Integer effectDuration;
    private Integer weight;

    /**
     * @return the id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the value
     */
    public Integer getValue() {
        return value;
    }

    /**
     * @param value the value to set
     */
    public void setValue(Integer value) {
        this.value = value;
    }

    /**
     * @return the equippable
     */
    public boolean isEquippable() {
        return equippable;
    }

    /**
     * @param equippable the equippable to set
     */
    public void setEquippable(boolean equippable) {
        this.equippable = equippable;
    }

    /**
     * @return the armour
     */
    public boolean isArmour() {
        return armour;
    }

    /**
     * @param armour the armour to set
     */
    public void setArmour(boolean armour) {
        this.armour = armour;
    }

    /**
     * @return the weapon
     */
    public boolean isWeapon() {
        return weapon;
    }

    /**
     * @param weapon the weapon to set
     */
    public void setWeapon(boolean weapon) {
        this.weapon = weapon;
    }

    /**
     * @return the cursed
     */
    public boolean isCursed() {
        return cursed;
    }

    /**
     * @param cursed the cursed to set
     */
    public void setCursed(boolean cursed) {
        this.cursed = cursed;
    }

    /**
     * @return the consumable
     */
    public boolean isConsumable() {
        return consumable;
    }

    /**
     * @param consumable the consumable to set
     */
    public void setConsumable(boolean consumable) {
        this.consumable = consumable;
    }

    /**
     * @return the observationMod
     */
    public Integer getObservationMod() {
        return observationMod;
    }

    /**
     * @param observationMod the observationMod to set
     */
    public void setObservationMod(Integer observationMod) {
        this.observationMod = observationMod;
    }

    /**
     * @return the strengthMod
     */
    public Integer getStrengthMod() {
        return strengthMod;
    }

    /**
     * @param strengthMod the strengthMod to set
     */
    public void setStrengthMod(Integer strengthMod) {
        this.strengthMod = strengthMod;
    }

    /**
     * @return the intelligenceMod
     */
    public Integer getIntelligenceMod() {
        return intelligenceMod;
    }

    /**
     * @param intelligenceMod the intelligenceMod to set
     */
    public void setIntelligenceMod(Integer intelligenceMod) {
        this.intelligenceMod = intelligenceMod;
    }

    /**
     * @return the agilityMod
     */
    public Integer getAgilityMod() {
        return agilityMod;
    }

    /**
     * @param agilityMod the agilityMod to set
     */
    public void setAgilityMod(Integer agilityMod) {
        this.agilityMod = agilityMod;
    }

    /**
     * @return the charmMod
     */
    public Integer getCharmMod() {
        return charmMod;
    }

    /**
     * @param charmMod the charmMod to set
     */
    public void setCharmMod(Integer charmMod) {
        this.charmMod = charmMod;
    }

    /**
     * @return the healthMod
     */
    public Integer getHealthMod() {
        return healthMod;
    }

    /**
     * @param healthMod the healthMod to set
     */
    public void setHealthMod(Integer healthMod) {
        this.healthMod = healthMod;
    }

    /**
     * @return the effectDuration
     */
    public Integer getEffectDuration() {
        return effectDuration;
    }

    /**
     * @param effectDuration the effectDuration to set
     */
    public void setEffectDuration(Integer effectDuration) {
        this.effectDuration = effectDuration;
    }

    /**
     * @return the usedInCombat
     */
    public boolean isUsedInCombat() {
        return usedInCombat;
    }

    /**
     * @param usedInCombat the usedInCombat to set
     */
    public void setUsedInCombat(boolean usedInCombat) {
        this.usedInCombat = usedInCombat;
    }

    /**
     * @return the damageMod
     */
    public Integer getDamageMod() {
        return damageMod;
    }

    /**
     * @param damageMod the damageMod to set
     */
    public void setDamageMod(Integer damageMod) {
        this.damageMod = damageMod;
    }

    /**
     * @return the weight
     */
    public Integer getWeight() {
        return weight;
    }

    /**
     * @param weight the weight to set
     */
    public void setWeight(Integer weight) {
        this.weight = weight;
    }

}
