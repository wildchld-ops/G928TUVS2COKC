.class Lcom/sec/android/app/launcher/activities/FolderEditorBase$1;
.super Ljava/lang/Object;
.source "FolderEditorBase.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/FolderEditorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/FolderEditorBase;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/FolderEditorBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase$1;->this$0:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderCloseCompleted(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 0

    return-void
.end method

.method public onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase$1;->this$0:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    # getter for: Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenForSelectionListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->access$000(Lcom/sec/android/app/launcher/activities/FolderEditorBase;)Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->unregisterFolderOpenListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase$1;->this$0:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    # invokes: Lcom/sec/android/app/launcher/activities/FolderEditorBase;->showAppsSelector(Lcom/sec/android/app/launcher/data/FolderItem;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->access$100(Lcom/sec/android/app/launcher/activities/FolderEditorBase;Lcom/sec/android/app/launcher/data/FolderItem;)V

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
