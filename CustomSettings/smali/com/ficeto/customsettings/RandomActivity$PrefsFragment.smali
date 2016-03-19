.class public Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "RandomActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ficeto/customsettings/RandomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ficeto/customsettings/RandomActivity$PrefsFragment$RunToolTask;
    }
.end annotation


# static fields
.field private static final LCAT:Ljava/lang/String; = "PrefsFragment"

.field private static MODCFG_FOLDER:Ljava/lang/String;

.field private static ROMCFG_FOLDER:Ljava/lang/String;


# instance fields
.field cr:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private dispatchCheckbox(Landroid/preference/CheckBoxPreference;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method private dispatchColorPicker(Lcom/ficeto/customsettings/ColorPickerPreference;Ljava/lang/Object;)V
    .locals 14

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ficeto/customsettings/ColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v11, "argb;"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v11, v5

    const/4 v12, 0x4

    if-eq v11, v12, :cond_1

    const-string v11, "PrefsFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "color prefs wrong size! : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v11, 0x0

    aget-object v1, v5, v11

    move-object/from16 v11, p2

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const-string v11, "PrefsFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ARGBS color prefs alpha: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    iget-object v11, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v11, v1, v7}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const/4 v11, 0x1

    aget-object v2, v5, v11

    move-object/from16 v11, p2

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v8

    const-string v11, "PrefsFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ARGBS color prefs red: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    iget-object v11, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v11, v2, v8}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    const/4 v11, 0x2

    aget-object v3, v5, v11

    move-object/from16 v11, p2

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v9

    const-string v11, "PrefsFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ARGBS color prefs green: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    iget-object v11, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v11, v3, v9}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    const/4 v11, 0x3

    aget-object v4, v5, v11

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    const-string v11, "PrefsFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ARGBS color prefs blue: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    iget-object v11, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v11, v4, v10}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    const-string v11, "argbf;"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x6

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v11, v5

    const/4 v12, 0x4

    if-eq v11, v12, :cond_6

    const-string v11, "PrefsFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "color prefs wrong size! : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    aget-object v1, v5, v11

    move-object/from16 v11, p2

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x437f0000    # 255.0f

    div-float v7, v11, v12

    const-string v11, "PrefsFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ARGBFS color prefs alpha: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7

    iget-object v11, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v11, v1, v7}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :cond_7
    const/4 v11, 0x1

    aget-object v2, v5, v11

    move-object/from16 v11, p2

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x437f0000    # 255.0f

    div-float v8, v11, v12

    const-string v11, "PrefsFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ARGBFS color prefs red: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8

    iget-object v11, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v11, v2, v8}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :cond_8
    const/4 v11, 0x2

    aget-object v3, v5, v11

    move-object/from16 v11, p2

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x437f0000    # 255.0f

    div-float v9, v11, v12

    const-string v11, "PrefsFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ARGBFS color prefs green: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_9

    iget-object v11, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v11, v3, v9}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :cond_9
    const/4 v11, 0x3

    aget-object v4, v5, v11

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x437f0000    # 255.0f

    div-float v10, v11, v12

    const-string v11, "PrefsFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ARGBFS color prefs blue: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    iget-object v11, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v11, v4, v10}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_0

    :cond_a
    const-string v11, "argb_"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getRGB(IZ)Ljava/lang/String;

    move-result-object v6

    const-string v11, "PrefsFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ARGB color prefs: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v11, v0, v6}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_b
    const-string v11, "rgb_"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getRGB(IZ)Ljava/lang/String;

    move-result-object v6

    const-string v11, "PrefsFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "RGB color prefs: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v11, v0, v6}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_c
    iget-object v11, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v11, v0, v12}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method private dispatchItem(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckBoxPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, p1, p2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->dispatchCheckbox(Landroid/preference/CheckBoxPreference;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "EditTextPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Landroid/preference/EditTextPreference;

    invoke-direct {p0, p1, p2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->dispatchText(Landroid/preference/EditTextPreference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "ListPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p1, Landroid/preference/ListPreference;

    invoke-direct {p0, p1, p2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->dispatchList(Landroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v1, "MultiSelectListPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p1, Landroid/preference/MultiSelectListPreference;

    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->dispatchMultiSelectList(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;)V

    goto :goto_0

    :cond_3
    const-string v1, "SwitchPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-direct {p0, p1, p2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->dispatchSwitch(Landroid/preference/SwitchPreference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v1, "RingtonePreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast p1, Landroid/preference/RingtonePreference;

    invoke-direct {p0, p1, p2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->dispatchRingtone(Landroid/preference/RingtonePreference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v1, "ColorPickerPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    check-cast p1, Lcom/ficeto/customsettings/ColorPickerPreference;

    invoke-direct {p0, p1, p2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->dispatchColorPicker(Lcom/ficeto/customsettings/ColorPickerPreference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-string v1, "SeekBarPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->dispatchSeekBar(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string v1, "PrefsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Need to implement: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dispatchList(Landroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private dispatchMultiSelectList(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/MultiSelectListPreference;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/preference/MultiSelectListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private dispatchRingtone(Landroid/preference/RingtonePreference;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/preference/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private dispatchSeekBar(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private dispatchSwitch(Landroid/preference/SwitchPreference;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method private dispatchText(Landroid/preference/EditTextPreference;Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setSettingString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private static getFileBoolean(Ljava/lang/String;)Z
    .locals 8

    const-string v5, "modcfg"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v5, "modcfgreverse_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    :goto_0
    const-string v2, ""

    if-eqz v3, :cond_3

    if-eqz v4, :cond_2

    const-string v5, "modcfgreverse_"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    sget-object v5, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->MODCFG_FOLDER:Ljava/lang/String;

    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v5, "PrefsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Get FileBoolean: filname: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mod: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reverse: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exists: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :cond_0
    :goto_3
    return v0

    :cond_1
    const-string v5, "romcfgreverse_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    :cond_2
    const-string v5, "modcfg_"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    const-string v5, "romcfgreverse_"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const-string v5, "romcfg_"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    sget-object v5, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->ROMCFG_FOLDER:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private getRGB(IZ)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x11

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const-string v3, "#"

    if-eqz p2, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ge v0, v7, :cond_1

    const-string v5, "0"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ge v4, v7, :cond_2

    const-string v5, "0"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v2, v7, :cond_3

    const-string v5, "0"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v1, v7, :cond_4

    const-string v5, "0"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const-string v5, ""

    goto :goto_0

    :cond_2
    const-string v5, ""

    goto :goto_1

    :cond_3
    const-string v5, ""

    goto :goto_2

    :cond_4
    const-string v5, ""

    goto :goto_3
.end method

.method public static getSettingBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    const-string v3, "romcfg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "modcfg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-static {p1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getFileBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    :cond_2
    move-object v0, p0

    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSettingFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 3

    move-object v0, p0

    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSettingFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 3

    move-object v0, p0

    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3

    move-object v0, p0

    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3

    move-object v0, p0

    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSettingString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, ""

    goto :goto_0
.end method

.method private initActivityShortcut(Landroid/preference/Preference;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private initCategory(Landroid/preference/PreferenceCategory;)V
    .locals 3

    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initItem(Landroid/preference/Preference;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initCheckbox(Landroid/preference/CheckBoxPreference;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private initColorPicker(Lcom/ficeto/customsettings/ColorPickerPreference;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/ficeto/customsettings/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ficeto/customsettings/ColorPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v14, "argb;"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x5

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v14, v8

    const/4 v15, 0x4

    if-eq v14, v15, :cond_0

    const-string v14, "PrefsFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "color prefs wrong size! : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v14, 0x0

    aget-object v4, v8, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    const/4 v15, 0x1

    invoke-static {v14, v4, v15}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v14, 0x1

    aget-object v5, v8, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v14, v5}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v11

    const/4 v14, 0x2

    aget-object v6, v8, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v14, v6}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v12

    const/4 v14, 0x3

    aget-object v7, v8, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v14, v7}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v13

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/ficeto/customsettings/ColorPickerPreference;->setInitialColor(I)V

    goto :goto_0

    :cond_1
    const-string v14, "argbf;"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x6

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v14, v8

    const/4 v15, 0x4

    if-eq v14, v15, :cond_2

    const-string v14, "PrefsFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "color prefs wrong size! : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    aget-object v4, v8, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v14, v4, v15}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v10

    const/4 v14, 0x1

    aget-object v5, v8, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v14, v5}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v11

    const/4 v14, 0x2

    aget-object v6, v8, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v14, v6}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v12

    const/4 v14, 0x3

    aget-object v7, v8, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v14, v7}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v13

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float/2addr v14, v10

    float-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float/2addr v15, v11

    float-to-int v15, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v16, v16, v12

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/high16 v17, 0x437f0000    # 255.0f

    mul-float v17, v17, v13

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/ficeto/customsettings/ColorPickerPreference;->setInitialColor(I)V

    goto/16 :goto_0

    :cond_3
    const-string v14, "argb_"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x5

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v14, v3}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v9, "#FF33B5E5"

    :cond_4
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/ficeto/customsettings/ColorPickerPreference;->setInitialColor(I)V

    goto/16 :goto_0

    :cond_5
    const-string v14, "rgb_"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, 0x4

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v14, v3}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    const-string v9, "#33B5E5"

    :cond_6
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/ficeto/customsettings/ColorPickerPreference;->disableAlpha(Z)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/ficeto/customsettings/ColorPickerPreference;->setInitialColor(I)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-static {v14, v3}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/ficeto/customsettings/ColorPickerPreference;->setInitialColor(I)V

    goto/16 :goto_0
.end method

.method private initItem(Landroid/preference/Preference;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreferenceCategory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p1, Landroid/preference/PreferenceCategory;

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initCategory(Landroid/preference/PreferenceCategory;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "PreferenceScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Landroid/preference/PreferenceScreen;

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_1
    const-string v1, "CheckBoxPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initCheckbox(Landroid/preference/CheckBoxPreference;)V

    goto :goto_0

    :cond_2
    const-string v1, "EditTextPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p1, Landroid/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initText(Landroid/preference/EditTextPreference;)V

    goto :goto_0

    :cond_3
    const-string v1, "ListPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p1, Landroid/preference/ListPreference;

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initList(Landroid/preference/ListPreference;)V

    goto :goto_0

    :cond_4
    const-string v1, "MultiSelectListPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast p1, Landroid/preference/MultiSelectListPreference;

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initMultiSelectList(Landroid/preference/MultiSelectListPreference;)V

    goto :goto_0

    :cond_5
    const-string v1, "SwitchPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initSwitch(Landroid/preference/SwitchPreference;)V

    goto :goto_0

    :cond_6
    const-string v1, "RingtonePreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    check-cast p1, Landroid/preference/RingtonePreference;

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initRingtone(Landroid/preference/RingtonePreference;)V

    goto :goto_0

    :cond_7
    const-string v1, "ColorPickerPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    check-cast p1, Lcom/ficeto/customsettings/ColorPickerPreference;

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initColorPicker(Lcom/ficeto/customsettings/ColorPickerPreference;)V

    goto :goto_0

    :cond_8
    const-string v1, "SeekBarPreference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initSeekBar(Landroid/preference/Preference;)V

    goto :goto_0

    :cond_9
    const-string v1, "Preference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tool#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "runactivity_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "runexternal_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-direct {p0, p1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initActivityShortcut(Landroid/preference/Preference;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "PrefsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Need to implement: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private initList(Landroid/preference/ListPreference;)V
    .locals 2

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private initMultiSelectList(Landroid/preference/MultiSelectListPreference;)V
    .locals 7

    invoke-virtual {p1, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/preference/MultiSelectListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v5, ","

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v2, v4

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    :cond_0
    return-void

    :cond_1
    aget-object v5, v4, v1

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initPrefs()V
    .locals 4

    invoke-virtual {p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initItem(Landroid/preference/Preference;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initRingtone(Landroid/preference/RingtonePreference;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/preference/RingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initScreen(Landroid/preference/PreferenceScreen;)V
    .locals 3

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initItem(Landroid/preference/Preference;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initSeekBar(Landroid/preference/Preference;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initSwitch(Landroid/preference/SwitchPreference;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private initText(Landroid/preference/EditTextPreference;)V
    .locals 2

    invoke-virtual {p1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getSettingString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private static setFileBoolean(Ljava/lang/String;Z)Z
    .locals 9

    const-string v6, "modcfg"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v6, "modcfgreverse_"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    :goto_0
    const-string v3, ""

    if-eqz v4, :cond_3

    if-eqz v5, :cond_2

    const-string v6, "modcfgreverse_"

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v6, "PrefsFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Set FileBoolean: value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " filname: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mod: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " reverse: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/File;

    if-eqz v4, :cond_5

    sget-object v6, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->MODCFG_FOLDER:Ljava/lang/String;

    :goto_2
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    if-eqz v4, :cond_6

    sget-object v6, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->MODCFG_FOLDER:Ljava/lang/String;

    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v0, p1

    if-eqz v5, :cond_0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :cond_0
    :goto_4
    if-eqz v0, :cond_8

    :try_start_0
    const-string v6, "PrefsFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Set FileBoolean: Creating "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    invoke-static {p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getFileBoolean(Ljava/lang/String;)Z

    move-result v6

    return v6

    :cond_1
    const-string v6, "romcfgreverse_"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_0

    :cond_2
    const-string v6, "modcfg_"

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_3
    if-eqz v5, :cond_4

    const-string v6, "romcfgreverse_"

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_4
    const-string v6, "romcfg_"

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    sget-object v6, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->ROMCFG_FOLDER:Ljava/lang/String;

    goto :goto_2

    :cond_6
    sget-object v6, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->ROMCFG_FOLDER:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    :catch_0
    move-exception v1

    const-string v6, "PrefsFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Set FileBoolean: Creating "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ERROR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_8
    :try_start_1
    const-string v6, "PrefsFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Set FileBoolean: Deleting "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    const-string v6, "PrefsFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Set FileBoolean: Deleting "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ERROR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5
.end method

.method public static setSettingBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 6

    const/4 v3, 0x0

    const-string v4, "romcfg"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "modcfg"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {p1, p2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->setFileBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    move-object v0, p0

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    :goto_1
    :try_start_0
    invoke-static {v0, p1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content://settings/system/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1
.end method

.method public static setSettingFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 5

    move-object v0, p0

    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://settings/system/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 5

    move-object v0, p0

    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://settings/system/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setSettingString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    move-object v0, p0

    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://settings/system/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->ROMCFG_FOLDER:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->MODCFG_FOLDER:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->initPrefs()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPreferenceChange: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->dispatchItem(Landroid/preference/Preference;Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10

    const/16 v9, 0x9

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "runactivity_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    const-string v6, "runactivity_"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PrefsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Run Local Activity: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    move v3, v4

    :goto_1
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "runexternal_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    const-string v7, "runexternal_"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "PrefsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Run External Activity: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "activity;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    if-eq v5, v7, :cond_3

    const-string v4, "PrefsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Wrong Params Given: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const-string v5, "PrefsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Run External Activity: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v3

    aget-object v7, v0, v4

    invoke-virtual {v6, v3, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tool#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    if-ge v5, v4, :cond_5

    const-string v4, "PrefsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Wrong Tool Params Given: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    new-instance v5, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment$RunToolTask;

    invoke-direct {v5, p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment$RunToolTask;-><init>(Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;)V

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v0, v6, v4

    invoke-virtual {v5, v6}, Lcom/ficeto/customsettings/RandomActivity$PrefsFragment$RunToolTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
