.class Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$2;
.super Landroid/database/ContentObserver;
.source "LGTPhotoRingRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$2;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$2;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mIsForeground:Z
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$200(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$2;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mUpdateScreen:Z
    invoke-static {v0, v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$302(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Z)Z

    :cond_0
    return-void
.end method
