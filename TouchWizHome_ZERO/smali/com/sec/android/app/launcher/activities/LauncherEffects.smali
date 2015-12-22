.class public Lcom/sec/android/app/launcher/activities/LauncherEffects;
.super Ljava/lang/Object;
.source "LauncherEffects.java"


# static fields
.field public static final SHADOW_APP_LIST:I = 0x2

.field public static final SHADOW_HOME:I = 0x0

.field public static final SHADOW_TOP5:I = 0x1

.field public static final SHADOW_WIDGET_LIST:I = 0x3


# instance fields
.field private mAppListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

.field private final mContext:Landroid/content/Context;

.field private mGlowEffect:Lcom/sec/daliviews/effects/GlowEffect;

.field private mGlowEffectForIcons:Lcom/sec/daliviews/effects/GlowEffect;

.field private mHomeShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

.field private final mShadowEffectEnabled:Z

.field private mTopFiveShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

.field private mWidgetListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mHomeShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mTopFiveShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mAppListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mWidgetListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mGlowEffect:Lcom/sec/daliviews/effects/GlowEffect;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mGlowEffectForIcons:Lcom/sec/daliviews/effects/GlowEffect;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->isEnableShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mShadowEffectEnabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAppListShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mAppListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mContext:Landroid/content/Context;

    const v1, 0x7f02006e

    invoke-static {v0, v1}, Lcom/sec/daliviews/effects/EffectLoader;->loadEffect(Landroid/content/Context;I)Lcom/sec/daliviews/effects/NativeEffect;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/effects/ShadowEffect;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mAppListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mAppListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    return-object v0
.end method

.method private getHomeShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mHomeShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mContext:Landroid/content/Context;

    const v1, 0x7f02006e

    invoke-static {v0, v1}, Lcom/sec/daliviews/effects/EffectLoader;->loadEffect(Landroid/content/Context;I)Lcom/sec/daliviews/effects/NativeEffect;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/effects/ShadowEffect;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mHomeShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mHomeShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    return-object v0
.end method

.method private getTopFiveShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mTopFiveShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mContext:Landroid/content/Context;

    const v1, 0x7f02006e

    invoke-static {v0, v1}, Lcom/sec/daliviews/effects/EffectLoader;->loadEffect(Landroid/content/Context;I)Lcom/sec/daliviews/effects/NativeEffect;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/effects/ShadowEffect;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mTopFiveShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mTopFiveShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    return-object v0
.end method

.method private getWidgetListShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mWidgetListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    return-object v0
.end method


# virtual methods
.method destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mHomeShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mHomeShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    invoke-virtual {v0}, Lcom/sec/daliviews/effects/ShadowEffect;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mTopFiveShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mTopFiveShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    invoke-virtual {v0}, Lcom/sec/daliviews/effects/ShadowEffect;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mAppListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mAppListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    invoke-virtual {v0}, Lcom/sec/daliviews/effects/ShadowEffect;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mWidgetListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mWidgetListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    invoke-virtual {v0}, Lcom/sec/daliviews/effects/ShadowEffect;->destroy()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mGlowEffect:Lcom/sec/daliviews/effects/GlowEffect;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mGlowEffect:Lcom/sec/daliviews/effects/GlowEffect;

    invoke-virtual {v0}, Lcom/sec/daliviews/effects/GlowEffect;->destroy()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mGlowEffectForIcons:Lcom/sec/daliviews/effects/GlowEffect;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mGlowEffectForIcons:Lcom/sec/daliviews/effects/GlowEffect;

    invoke-virtual {v0}, Lcom/sec/daliviews/effects/GlowEffect;->destroy()V

    :cond_5
    return-void
.end method

.method public getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mGlowEffect:Lcom/sec/daliviews/effects/GlowEffect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mContext:Landroid/content/Context;

    const v1, 0x7f020028

    invoke-static {v0, v1}, Lcom/sec/daliviews/effects/EffectLoader;->loadEffect(Landroid/content/Context;I)Lcom/sec/daliviews/effects/NativeEffect;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/effects/GlowEffect;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mGlowEffect:Lcom/sec/daliviews/effects/GlowEffect;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mGlowEffect:Lcom/sec/daliviews/effects/GlowEffect;

    return-object v0
.end method

.method public getGlowEffectForIcons()Lcom/sec/daliviews/effects/GlowEffect;
    .locals 7

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mGlowEffectForIcons:Lcom/sec/daliviews/effects/GlowEffect;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const v5, 0x7f09000e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v5, 0x7f0a00c4

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    const v5, 0x7f0a00c2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v5, 0x7f0a00c3

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    new-instance v5, Lcom/sec/daliviews/effects/GlowEffect;

    invoke-direct {v5, v1, v4, v0}, Lcom/sec/daliviews/effects/GlowEffect;-><init>(IFI)V

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mGlowEffectForIcons:Lcom/sec/daliviews/effects/GlowEffect;

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mGlowEffectForIcons:Lcom/sec/daliviews/effects/GlowEffect;

    return-object v5
.end method

.method public getShadowEffect(I)Lcom/sec/daliviews/effects/ShadowEffect;
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mShadowEffectEnabled:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherEffects;->getHomeShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherEffects;->getTopFiveShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherEffects;->getAppListShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherEffects;->getWidgetListShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isShadowEffectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mShadowEffectEnabled:Z

    return v0
.end method

.method public setShadowVisible(IZ)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mHomeShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mHomeShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    invoke-virtual {v0, p2}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisible(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mTopFiveShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mTopFiveShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    invoke-virtual {v0, p2}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisible(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mAppListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mAppListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    invoke-virtual {v0, p2}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisible(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mWidgetListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherEffects;->mWidgetListShadowEffect:Lcom/sec/daliviews/effects/ShadowEffect;

    invoke-virtual {v0, p2}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisible(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
