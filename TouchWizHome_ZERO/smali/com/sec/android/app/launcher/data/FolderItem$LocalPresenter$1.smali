.class Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$1;
.super Ljava/lang/Object;
.source "FolderItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->closeFolderDelayed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

.field final synthetic val$animate:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$1;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iput-boolean p2, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$1;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$1;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$1;->val$animate:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->closeFolder(Z)V

    return-void
.end method
