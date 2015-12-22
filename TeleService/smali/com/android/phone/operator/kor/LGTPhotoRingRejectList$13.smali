.class Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$13;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->deleteDialog(ZIZ)V
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

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$13;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$13;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mFromContextMenu:Z
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$2200(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$13;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-virtual {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->deleteFromContextMenu()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$13;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-virtual {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->deleteManyItems()V

    goto :goto_0
.end method
