.class public Lcom/android/keyguard/sec/SecPopupManager;
.super Ljava/lang/Object;
.source "SecPopupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final POPUP_DISMISS_DURATION:I = 0xfa0

.field private static final PREFERANCE_NAME:Ljava/lang/String; = "SecPopupManager"

.field private static final TAG:Ljava/lang/String; = "SecPopupManager"

.field private static mDialogDismissHandler:Landroid/os/Handler;

.field private static mHelpOverlyDialog:Landroid/app/Dialog;

.field private static mPopupDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/sec/SecPopupManager$7;

    invoke-direct {v0}, Lcom/android/keyguard/sec/SecPopupManager$7;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mDialogDismissHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/android/keyguard/sec/SecPopupManager;->dismissdDialog()V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mDialogDismissHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    sput-object p0, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$300()Landroid/app/Dialog;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$302(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    sput-object p0, Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static dismissHelpOverlayDialog()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "SecPopupManager"

    const-string v1, "help overlay dialog dismiss by api"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "SecPopupManager"

    const-string v1, "help overlay dialog is null by api"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dismissPopupDialog()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "SecPopupManager"

    const-string v1, "popup dialog dismiss by api"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "SecPopupManager"

    const-string v1, "popup dialog is null by api"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static dismissdDialog()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mDialogDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private static getCheckFlag(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "SecPopupManager"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const-string v1, "SecPopupManager"

    const-string v3, "preferences is null"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0
.end method

.method public static getRemainCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    const-string v2, "SecPopupManager"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v2, "SecPopupManager"

    const-string v3, "preferences is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isDisplayedDialogByCheckFlag(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    if-nez p1, :cond_0

    const-string v1, "SecPopupManager"

    const-string v2, "key is null, then always show dialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/keyguard/sec/SecPopupManager;->getCheckFlag(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SecPopupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", shouldShow is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isDisplayedDialogByCheckRemainCount(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const-string v2, "SecPopupManager"

    const-string v3, "key is null, then always show dialog"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/keyguard/sec/SecPopupManager;->getRemainCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v2, "SecPopupManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remain count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v2}, Lcom/android/keyguard/sec/SecPopupManager;->setRemainCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static isShowingPopupDialog()Z
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setRemainCount(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    const-string v1, "SecPopupManager"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "SecPopupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", setup count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "SecPopupManager"

    const-string v2, "editor is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showOverlayHelp(Landroid/content/Context;IIILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "SecPopupManager"

    const-string v2, "view is null!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/keyguard/sec/SecPopupManager;->showOverlayHelp(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public static showOverlayHelp(Landroid/content/Context;IILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
    .locals 8

    const/16 v3, 0x8

    sget v0, Lcom/android/keyguard/R$layout;->sec_help_overlay_layout:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "SecPopupManager"

    const-string v2, "view is null!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->help_overlay_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->help_overlay_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    if-eqz p1, :cond_3

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    if-eqz p2, :cond_4

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_2
    sget v2, Lcom/android/keyguard/R$id;->help_overlay_checkbox:I

    sget v3, Lcom/android/keyguard/R$id;->help_overlay_button:I

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/keyguard/sec/SecPopupManager;->showOverlayHelp(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static showOverlayHelp(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
    .locals 8

    const/16 v3, 0x8

    sget v0, Lcom/android/keyguard/R$layout;->sec_help_overlay_layout:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "SecPopupManager"

    const-string v2, "view is null!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->help_overlay_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->help_overlay_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    if-eqz p1, :cond_3

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    if-eqz p2, :cond_4

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    sget v2, Lcom/android/keyguard/R$id;->help_overlay_checkbox:I

    sget v3, Lcom/android/keyguard/R$id;->help_overlay_button:I

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/keyguard/sec/SecPopupManager;->showOverlayHelp(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private static showOverlayHelp(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
    .locals 11

    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const-string v0, "SecPopupManager"

    const-string v1, "Another help overlay dialog has been seen already"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v10, 0x0

    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v10

    :cond_1
    if-eqz v10, :cond_2

    const-string v0, "SecPopupManager"

    const-string v1, "keyguard is not showing (night clock)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0, p4}, Lcom/android/keyguard/sec/SecPopupManager;->isDisplayedDialogByCheckFlag(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v8, Lcom/android/keyguard/sec/SecPopupManager$4;

    invoke-direct {v8, p0}, Lcom/android/keyguard/sec/SecPopupManager$4;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    new-instance v0, Lcom/android/keyguard/sec/SecPopupManager$5;

    move-object/from16 v1, p5

    move-object v2, p1

    move v3, p2

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/SecPopupManager$5;-><init>(Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;Landroid/view/View;ILandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/16 v2, 0xb2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8ae

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v8, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    sput-object v8, Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_4

    instance-of v0, v9, Landroid/widget/Button;

    if-eqz v0, :cond_4

    move-object v6, v9

    check-cast v6, Landroid/widget/Button;

    new-instance v0, Lcom/android/keyguard/sec/SecPopupManager$6;

    invoke-direct {v0}, Lcom/android/keyguard/sec/SecPopupManager$6;-><init>()V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const-string v0, "SecPopupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "help overlay dialog set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static showPopupDialog(Landroid/content/Context;IIILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
    .locals 7

    const/16 v6, 0x8

    sget v4, Lcom/android/keyguard/R$layout;->sec_popup_layout:I

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "SecPopupManager"

    const-string v5, "view is null!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    sget v4, Lcom/android/keyguard/R$id;->popup_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$id;->popup_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$id;->popup_image:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_4

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p2, :cond_5

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    if-eqz p3, :cond_6

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_3
    invoke-static {p0, v3, p4, p5}, Lcom/android/keyguard/sec/SecPopupManager;->showPopupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z

    move-result v4

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public static showPopupDialog(Landroid/content/Context;ILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "SecPopupManager"

    const-string v2, "view is null!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, v0, p2, p3}, Lcom/android/keyguard/sec/SecPopupManager;->showPopupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z

    move-result v1

    goto :goto_0
.end method

.method private static showPopupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
    .locals 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v8, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v8, :cond_1

    const-string v7, "SecPopupManager"

    const-string v8, "Another popup dialog has been seen already"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v5

    :cond_2
    if-eqz v5, :cond_3

    const-string v7, "SecPopupManager"

    const-string v8, "keyguard is not showing (night clock)"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p0, p2}, Lcom/android/keyguard/sec/SecPopupManager;->isDisplayedDialogByCheckRemainCount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "enabled_accessibility_services"

    invoke-static {v1, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "accessibility_enabled"

    invoke-static {v1, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v7, :cond_4

    if-eqz v4, :cond_4

    const-string v8, "(?i).*talkback.*"

    invoke-virtual {v4, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v3, 0x1

    :cond_4
    new-instance v8, Lcom/android/keyguard/sec/SecPopupManager$1;

    invoke-direct {v8}, Lcom/android/keyguard/sec/SecPopupManager$1;-><init>()V

    invoke-virtual {p1, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/android/keyguard/sec/SecPopupManager$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/SecPopupManager$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    new-instance v8, Lcom/android/keyguard/sec/SecPopupManager$3;

    invoke-direct {v8, p3}, Lcom/android/keyguard/sec/SecPopupManager$3;-><init>(Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)V

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x50

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sput-object v2, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    const-string v8, "SecPopupManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "popup dialog set to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_5

    sget-object v8, Lcom/android/keyguard/sec/SecPopupManager;->mDialogDismissHandler:Landroid/os/Handler;

    const-wide/16 v10, 0xfa0

    invoke-virtual {v8, v6, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    move v6, v7

    goto/16 :goto_0
.end method
