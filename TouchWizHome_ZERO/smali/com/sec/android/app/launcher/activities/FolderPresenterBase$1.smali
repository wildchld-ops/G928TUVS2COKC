.class Lcom/sec/android/app/launcher/activities/FolderPresenterBase$1;
.super Ljava/lang/Object;
.source "FolderPresenterBase.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->createFolder(Lcom/sec/daliviews/views/Item;ZLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

.field final synthetic val$boundingBox:Landroid/graphics/Rect;

.field final synthetic val$cloneItem:Z

.field final synthetic val$droppedItem:Lcom/sec/daliviews/views/Item;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/FolderPresenterBase;Lcom/sec/daliviews/views/Item;ZLandroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$1;->this$0:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$1;->val$droppedItem:Lcom/sec/daliviews/views/Item;

    iput-boolean p3, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$1;->val$cloneItem:Z

    iput-object p4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$1;->val$boundingBox:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderCloseCompleted(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 0

    return-void
.end method

.method public onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$1;->this$0:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->unregisterFolderOpenListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$1;->this$0:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderEditor()Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$1;->val$droppedItem:Lcom/sec/daliviews/views/Item;

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$1;->val$cloneItem:Z

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$1;->val$boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->createFolder(Lcom/sec/daliviews/views/Item;ZLandroid/graphics/Rect;)V

    return-void
.end method

.method public onFolderClosing(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 0

    return-void
.end method

.method public onFolderOpened(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 0

    return-void
.end method

.method public onFolderOpening(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 0

    return-void
.end method
