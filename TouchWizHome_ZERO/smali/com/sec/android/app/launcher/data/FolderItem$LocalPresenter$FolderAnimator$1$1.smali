.class Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1$1;
.super Ljava/lang/Object;
.source "FolderItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1;->handleUIAnimEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1$1;->this$3:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1$1;->this$3:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1;

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator$1;->this$2:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->onFolderOpenCompleted(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;->access$1800(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter$FolderAnimator;Z)V

    return-void
.end method
