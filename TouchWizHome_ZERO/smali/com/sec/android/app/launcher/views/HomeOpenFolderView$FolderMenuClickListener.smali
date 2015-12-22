.class Lcom/sec/android/app/launcher/views/HomeOpenFolderView$FolderMenuClickListener;
.super Ljava/lang/Object;
.source "HomeOpenFolderView.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$FolderMenuClickListener;->this$0:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$FolderMenuClickListener;->this$0:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setVisibilityFolderTitle(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$FolderMenuClickListener;->this$0:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    # getter for: Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->access$100(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)Lcom/sec/android/app/launcher/views/EditTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->getMode()Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->EDIT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$FolderMenuClickListener;->this$0:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    # getter for: Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->mEditTextView:Lcom/sec/android/app/launcher/views/EditTextView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->access$100(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)Lcom/sec/android/app/launcher/views/EditTextView;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->TEXT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/EditTextView;->setMode(Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$FolderMenuClickListener;->this$0:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    # invokes: Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->hideColorPicker()Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->access$200(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$FolderMenuClickListener;->this$0:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    # invokes: Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->showColorPicker()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->access$300(Lcom/sec/android/app/launcher/views/HomeOpenFolderView;)V

    goto :goto_0
.end method
