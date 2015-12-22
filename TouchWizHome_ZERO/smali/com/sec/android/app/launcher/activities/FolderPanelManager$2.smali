.class Lcom/sec/android/app/launcher/activities/FolderPanelManager$2;
.super Ljava/lang/Thread;
.source "FolderPanelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setupAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/FolderPanelManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/FolderPanelManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager$2;->this$0:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager$2;->this$0:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager$2;->this$0:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    # getter for: Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayoutColumns:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->access$200(Lcom/sec/android/app/launcher/activities/FolderPanelManager;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager$2;->this$0:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    # getter for: Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mHomeFolderList:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->access$300(Lcom/sec/android/app/launcher/activities/FolderPanelManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lcom/sec/android/app/launcher/activities/FolderPanelManager;->loadFolderItems(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->access$400(Lcom/sec/android/app/launcher/activities/FolderPanelManager;IIZ)V

    return-void
.end method
