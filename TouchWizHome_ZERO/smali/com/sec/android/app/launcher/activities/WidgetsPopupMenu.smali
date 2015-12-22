.class public Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;
.super Lcom/sec/android/app/launcher/activities/PopupMenuBase;
.source "WidgetsPopupMenu.java"

# interfaces
.implements Lcom/sec/android/app/launcher/activities/popup/PopupMenu$OnMenuItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V
    .locals 3

    const v1, 0x7f0b00d2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/app/launcher/activities/PopupMenuBase;-><init>(Landroid/app/Activity;IZ)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->hasUninstallWidgets()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->setOnMenuItemClickListener(Lcom/sec/android/app/launcher/activities/popup/PopupMenu$OnMenuItemClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public enableUninstallMenu(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0b0149

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method protected onButtonClick()V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->hasUninstallWidgets()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setVisibility(Z)V

    sget-object v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->SLIDE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    invoke-super {p0, v6, v1, v0}, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->setOptionsButtonVisibility(ZZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mParentActivity:Landroid/app/Activity;

    const-string v2, "WGSC"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getZoomAniTime()F

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->zoomOutPageViews_widgets(FZ)V

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->TAG:Ljava/lang/String;

    const-string v1, "Unsupported menu item selected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v6

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setVisibility(Z)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->SLIDE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    invoke-super {p0, v6, v0, v1}, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->setOptionsButtonVisibility(ZZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mParentActivity:Landroid/app/Activity;

    const-string v2, "WGSC"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v1

    if-ne v1, v7, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getZoomAniTime()F

    move-result v2

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->zoomOutPageViews_widgets(FZ)V

    :cond_0
    move v6, v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onOptionSelectedUninstall()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v1

    if-ne v1, v7, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getZoomAniTime()F

    move-result v2

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->zoomOutPageViews_widgets(FZ)V

    :cond_1
    move v6, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0148
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refreshPopupMenu()V
    .locals 9

    const v8, 0x7f0d0070

    const v7, 0x7f0d0029

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->hasUninstallWidgets()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    sget-object v3, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mParentActivity:Landroid/app/Activity;

    const v4, 0x7f0d008a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    sget-object v2, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mParentActivity:Landroid/app/Activity;

    const v5, 0x7f0d0089

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f0001

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    sget-object v3, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v3, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v4, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->optionsButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
