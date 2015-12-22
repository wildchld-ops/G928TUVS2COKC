.class public Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
.super Ljava/lang/Object;
.source "UniversalLockSettingsHelper.java"


# static fields
.field private static final mBuildCharacteristics:Ljava/lang/String;


# instance fields
.field public SETTINGS_ARROW_SIZE:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivity:Landroid/app/Activity;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mBuildCharacteristics:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d031d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    :goto_0
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0313

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    goto :goto_0
.end method

.method public static applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    const-string v2, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v3, 0x1

    if-gt v2, p3, :cond_0

    if-le v4, p2, :cond_1

    :cond_0
    div-int/lit8 v0, v2, 0x2

    div-int/lit8 v1, v4, 0x2

    :goto_0
    div-int v5, v0, v3

    if-le v5, p3, :cond_1

    div-int v5, v1, v3

    if-le v5, p2, :cond_1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return v3
.end method

.method public changeBitmapColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-direct {v1, p2, v6}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v3
.end method

.method public getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v4, 0x1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p3, p4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {v3, p3, p4, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    :cond_1
    throw v4
.end method

.method public getCurrentLockScreen()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    goto :goto_0
.end method

.method public getResIDForCurrentLockScreen()I
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    const-string v2, "UniversalLockSettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quality - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x7f0a0a42

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0a12ac

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0a01ed

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0a109b

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0a01fd

    goto :goto_0

    :sswitch_5
    const v0, 0x7f0a01ff

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_4
        0x30000 -> :sswitch_4
        0x40000 -> :sswitch_5
        0x50000 -> :sswitch_5
        0x60000 -> :sswitch_5
        0x61000 -> :sswitch_3
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method public isAMOLEDSupport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMobileKeyboardCovered(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTablet()Z
    .locals 2

    sget-object v0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mBuildCharacteristics:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public launchConfirmCurrentLockScreen(Z)Z
    .locals 9

    const/4 v8, 0x0

    const/16 v5, 0x1000

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getCurrentLockScreen()I

    move-result v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-ne v3, v5, :cond_1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const/16 v6, 0x66

    invoke-virtual {v5, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    if-eq v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "universal_lock_switch_state"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v6, 0x65

    invoke-virtual {v5, v6, v8, v8, v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    move v0, v4

    if-nez v4, :cond_0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldDirectionLockBeDisabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchToSwipe()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLockUniversal(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_switch_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
