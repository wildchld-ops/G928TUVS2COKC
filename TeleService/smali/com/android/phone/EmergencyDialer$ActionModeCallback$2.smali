.class Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer$ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$900(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v2

    iget v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_COUNT:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItem;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/android/phone/EmergencyContactItem;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$2;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->notifyCheckChanged()V

    return-void
.end method
