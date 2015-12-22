.class Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$2;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$2;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$3300(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$2;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$3300(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$2;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$3600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$2;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$2600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$2;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$2600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback$2;->this$1:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$ActionModeCallback;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->updateDeleteScreenItems()V
    invoke-static {v2}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$1400(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    return-void
.end method
