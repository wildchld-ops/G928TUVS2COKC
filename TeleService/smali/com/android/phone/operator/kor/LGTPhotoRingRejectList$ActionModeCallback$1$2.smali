.class Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1$2;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1$2;->this$2:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1$2;->this$2:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;

    iget-object v0, v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$3600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1$2;->this$2:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;

    iget-object v1, v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$1;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    iget-object v1, v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getApplicationContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$4200(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
