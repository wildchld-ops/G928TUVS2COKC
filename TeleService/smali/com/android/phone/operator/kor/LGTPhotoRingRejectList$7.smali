.class Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$7;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$7;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/16 v3, 0x64

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$7;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    const-string v2, "onItemLongClick"

    # invokes: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$1600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$7;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I
    invoke-static {v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$1300(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$7;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # setter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectedItem:I
    invoke-static {v1, p3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$1702(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;I)I

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$7;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    const/4 v2, 0x2

    # setter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I
    invoke-static {v1, v2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$1302(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;I)I

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$7;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->removeDialog(I)V
    invoke-static {v1, v3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$1800(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;I)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$7;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->showDialog(I)V
    invoke-static {v1, v3}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$1900(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;I)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$7;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    const-string v2, "onItemLongClick, return true"

    # invokes: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$1600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Ljava/lang/String;Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
