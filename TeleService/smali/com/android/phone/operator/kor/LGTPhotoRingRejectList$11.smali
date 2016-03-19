.class Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$11;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$11;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$11;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I
    invoke-static {v0, v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$1302(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;I)I

    return-void
.end method
