.class Lcom/sec/android/app/launcher/views/FolderColorPicker$1;
.super Ljava/lang/Object;
.source "FolderColorPicker.java"

# interfaces
.implements Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/FolderColorPicker;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/FolderColorPicker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/FolderColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker$1;->this$0:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lcom/sec/daliviews/animation/NativeAnimation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker$1;->this$0:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/FolderColorPicker$1;->this$0:Lcom/sec/android/app/launcher/views/FolderColorPicker;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/views/FolderColorPicker;->mIsDismissing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->access$002(Lcom/sec/android/app/launcher/views/FolderColorPicker;Z)Z

    return-void
.end method
