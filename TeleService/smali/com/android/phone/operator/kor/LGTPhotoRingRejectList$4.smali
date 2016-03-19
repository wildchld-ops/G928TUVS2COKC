.class Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$4;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$4;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$4;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->queryString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$1002(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$4;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->makeScreen()V
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$1100(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
