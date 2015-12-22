.class Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mScreenType:I
    invoke-static {v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$1300(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget v1, v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    if-lez v1, :cond_2

    move v1, v2

    :goto_0
    iput v1, v4, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$2600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f100029

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Checkable;

    iget-object v4, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget v4, v4, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    invoke-virtual {v0, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$2700(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "photoring_unknown_mode"

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectAdapter$2;->val$item:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v4, v4, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    # invokes: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$2500(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Ljava/lang/String;Ljava/lang/Integer;I)V

    goto :goto_1
.end method
