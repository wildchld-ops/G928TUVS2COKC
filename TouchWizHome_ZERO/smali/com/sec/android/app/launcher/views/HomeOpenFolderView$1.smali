.class Lcom/sec/android/app/launcher/views/HomeOpenFolderView$1;
.super Ljava/lang/Object;
.source "HomeOpenFolderView.java"

# interfaces
.implements Lcom/sec/android/app/launcher/views/FolderColorPicker$OnColorSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$1;->this$0:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$1;->this$0:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    # getter for: Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->access$000(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem;->onColorSelected(I)V

    return-void
.end method
