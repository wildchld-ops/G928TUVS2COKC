.class Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$3;
.super Ljava/lang/Object;
.source "FolderItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->onFolderCloseCompleted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$3;->this$2:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$3;->this$2:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->this$1:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->destroyOpenFolderView()V

    return-void
.end method
