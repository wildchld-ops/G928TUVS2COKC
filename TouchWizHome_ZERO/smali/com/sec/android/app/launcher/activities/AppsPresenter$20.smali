.class Lcom/sec/android/app/launcher/activities/AppsPresenter$20;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->showFolderPopupMenu(Lcom/sec/android/app/launcher/data/FolderItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

.field final synthetic val$folder:Lcom/sec/android/app/launcher/data/FolderItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$20;->val$folder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v4, -0x1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUSAFolderDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4100(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->getOpenFolderMode()Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$20;->val$folder:Lcom/sec/android/app/launcher/data/FolderItem;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->getFolderBoundingBox()Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;ZLandroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$20;->val$folder:Lcom/sec/android/app/launcher/data/FolderItem;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/FolderItem;II)Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
