.class Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$8;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$8;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$8;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # setter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mFirstVisibleItem:I
    invoke-static {v0, p2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$2002(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;I)I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
