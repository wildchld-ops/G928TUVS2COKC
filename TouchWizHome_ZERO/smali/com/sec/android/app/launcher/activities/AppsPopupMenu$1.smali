.class Lcom/sec/android/app/launcher/activities/AppsPopupMenu$1;
.super Ljava/lang/Object;
.source "AppsPopupMenu.java"

# interfaces
.implements Lcom/sec/android/app/launcher/activities/popup/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPopupMenu;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPopupMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPopupMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsPopupMenu;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->selectViewType()V
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$100(Lcom/sec/android/app/launcher/activities/AppsPopupMenu;)V

    goto :goto_0

    :pswitch_3
    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v2

    if-eqz v2, :cond_1

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isDownloadedAppsAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DOWNLOADED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListType(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mParentActivity:Landroid/app/Activity;

    const v3, 0x7f0d0077

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_4
    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    goto :goto_0

    :pswitch_5
    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->HIDE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    goto :goto_0

    :pswitch_6
    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DISABLED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListTypeAndMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    goto :goto_0

    :pswitch_7
    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->HIDDEN:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListTypeAndMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsPopupMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->onClickstartDownloadableApps()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsPopupMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->onClickOnlineHelp()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b013e
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
