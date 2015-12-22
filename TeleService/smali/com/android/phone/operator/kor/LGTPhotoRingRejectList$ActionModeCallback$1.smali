.class Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const-wide/16 v2, 0x78

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$3600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$3600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1$1;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1$1;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$3600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1$2;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1$2;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
