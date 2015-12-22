.class Lcom/sec/android/app/launcher/activities/AppsPresenter$3;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->setAppSelectionMode(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

.field final synthetic val$folder:Lcom/sec/android/app/launcher/data/FolderItem;

.field final synthetic val$listener:Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$3;->val$folder:Lcom/sec/android/app/launcher/data/FolderItem;

    iput-object p3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$3;->val$listener:Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$3;->val$folder:Lcom/sec/android/app/launcher/data/FolderItem;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$3;->val$listener:Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->doSetAppSelectionMode(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$700(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;)V

    return-void
.end method
