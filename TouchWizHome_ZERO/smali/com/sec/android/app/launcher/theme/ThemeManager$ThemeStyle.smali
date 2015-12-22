.class public Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/theme/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;
    }
.end annotation


# instance fields
.field allapps:Landroid/graphics/drawable/Drawable;

.field appTitleBg:Landroid/graphics/drawable/Drawable;

.field appTrayBg:Landroid/graphics/drawable/Drawable;

.field apps_fontColor:I

.field badgeBg:Landroid/graphics/Bitmap;

.field badgeBgColor:I

.field badgeTextColor:I

.field enableAppTitle:Z

.field enableShadow:Z

.field fontStyle:Landroid/graphics/Typeface;

.field home_fontColor:I

.field key:[Ljava/lang/String;

.field mBadgeChunk:[B

.field mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

.field ninePatchBadgeBg:Landroid/graphics/drawable/NinePatchDrawable;

.field pageIndicatorDefault:Landroid/graphics/drawable/Drawable;

.field pageIndicatorHeadlines:Landroid/graphics/drawable/Drawable;

.field pageIndicatorHome:Landroid/graphics/drawable/Drawable;

.field text_highlight:I

.field transitionEffect:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/theme/ThemeManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "homescreen_menu_page_navi_home_f"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "homescreen_menu_page_navi_default_f"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "homescreen_menu_page_navi_headlines_f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "enable_shadow"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "enable_title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "font"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title_background"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "home_title_color"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "apps_title_color"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ic_allapps"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "homescreen_apps_bg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "page_transition_effect"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "material_blue_grey_900"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "counter_bubble"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "badge_bg_color"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "badge_text_color"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iput-object p1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    return-void
.end method


# virtual methods
.method public getAllapps()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->allapps:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppTitleBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->appTitleBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppTrayBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->appTrayBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppsTextColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->apps_fontColor:I

    return v0
.end method

.method public getBadgeBg()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->badgeBg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBadgeChunk()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mBadgeChunk:[B

    return-object v0
.end method

.method public getBadgeTextColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->badgeTextColor:I

    return v0
.end method

.method public getFontStyle()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->fontStyle:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getHomeTextColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->home_fontColor:I

    return v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNinePatchBadgeBg()Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->ninePatchBadgeBg:Landroid/graphics/drawable/NinePatchDrawable;

    return-object v0
.end method

.method public getPageIndicatorDefault()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->pageIndicatorDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPageIndicatorHeadlines()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->pageIndicatorHeadlines:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPageIndicatorHome()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->pageIndicatorHome:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText_highlight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->text_highlight:I

    return v0
.end method

.method public getTransitionEffect()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->transitionEffect:I

    return v0
.end method

.method public isEnableAppTitle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->enableAppTitle:Z

    return v0
.end method

.method public isEnableShadow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->enableShadow:Z

    return v0
.end method

.method public readTextColor()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    # getter for: Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$300(Lcom/sec/android/app/launcher/theme/ThemeManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "need_dark_font"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    # getter for: Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;
    invoke-static {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$000(Lcom/sec/android/app/launcher/theme/ThemeManager;)Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v0

    const-string v1, "icon_title_dark_font_color"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemColorforDefaultResource(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->home_fontColor:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->HOME_TEXT_COLOR:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforColorType(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->home_fontColor:I

    goto :goto_0
.end method

.method public setBadgeImage()V
    .locals 8

    const v4, 0x1ffffff

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v3, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->BADGE_BG_COLOR:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v5

    aget-object v3, v3, v5

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->BADGE:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    invoke-virtual {v0, v3, v7, v5}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforColorType(Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->badgeBgColor:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v3, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->BADGE_TEXT_COLOR:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v5

    aget-object v3, v3, v5

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->BADGE:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    invoke-virtual {v0, v3, v7, v5}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforColorType(Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->badgeTextColor:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v3, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->BADGE_BG:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v5

    aget-object v3, v3, v5

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->BADGE:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforDrawableType(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v3, v7, v5}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$200(Lcom/sec/android/app/launcher/theme/ThemeManager;Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->ninePatchBadgeBg:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->ninePatchBadgeBg:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->badgeBgColor:I

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    # getter for: Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$300(Lcom/sec/android/app/launcher/theme/ThemeManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v0, 0x7f020059

    invoke-static {v6, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const v0, 0x7f02004a

    invoke-static {v6, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    # getter for: Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$300(Lcom/sec/android/app/launcher/theme/ThemeManager;)Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->badgeBgColor:I

    const v5, 0x3f666666    # 0.9f

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithStroke(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->badgeBg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mBadgeChunk:[B

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mBadgeChunk:[B

    goto :goto_0
.end method

.method public setHomeTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->home_fontColor:I

    return-void
.end method

.method setTheme()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->SHADOW:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforBooleanType(Ljava/lang/String;ZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->enableShadow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->enableAppTitle:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->readTextColor()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    # getter for: Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;
    invoke-static {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$000(Lcom/sec/android/app/launcher/theme/ThemeManager;)Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->APPS_TEXT_COLOR:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemColorforDefaultResource(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->apps_fontColor:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->FONT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v3

    aget-object v2, v2, v3

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforStringType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getFontStyle(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->fontStyle:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->TITLE_BACKGROUND:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$100(Lcom/sec/android/app/launcher/theme/ThemeManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->appTitleBg:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->PAGEINDICATOR_HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$100(Lcom/sec/android/app/launcher/theme/ThemeManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->pageIndicatorHome:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->PAGEINDICATOR_DEFAULT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$100(Lcom/sec/android/app/launcher/theme/ThemeManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->pageIndicatorDefault:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->PAGEINDICATOR_HEADLINE:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$100(Lcom/sec/android/app/launcher/theme/ThemeManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->pageIndicatorHeadlines:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->ALL_APPS_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforDrawableType(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v4, v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$200(Lcom/sec/android/app/launcher/theme/ThemeManager;Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->allapps:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->APPS_TRAY_BG:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$100(Lcom/sec/android/app/launcher/theme/ThemeManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->appTrayBg:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->TRANSITON_EFFECT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforIntegerType(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->transitionEffect:I

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->transitionEffect:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->transitionEffect:I

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->transitionEffect:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->transitionEffect:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->transitionEffect:I

    :cond_1
    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->transitionEffect:I

    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getTransitionEffectType(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->transitionEffect:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->TEXT_HIGHLIGHT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->WINSET:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforColorType(Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->text_highlight:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->setBadgeImage()V

    return-void
.end method
