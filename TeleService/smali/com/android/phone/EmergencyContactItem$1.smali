.class Lcom/android/phone/EmergencyContactItem$1;
.super Ljava/lang/Object;
.source "EmergencyContactItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyContactItem;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyContactItem;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyContactItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem$1;->this$0:Lcom/android/phone/EmergencyContactItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem$1;->this$0:Lcom/android/phone/EmergencyContactItem;

    # getter for: Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/EmergencyContactItem;->access$000(Lcom/android/phone/EmergencyContactItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem$1;->this$0:Lcom/android/phone/EmergencyContactItem;

    # getter for: Lcom/android/phone/EmergencyContactItem;->mItemCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/EmergencyContactItem;->access$200(Lcom/android/phone/EmergencyContactItem;)Landroid/widget/CheckBox;

    move-result-object v0

    # getter for: Lcom/android/phone/EmergencyContactItem;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/phone/EmergencyContactItem;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem$1;->this$0:Lcom/android/phone/EmergencyContactItem;

    # getter for: Lcom/android/phone/EmergencyContactItem;->mItemCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/EmergencyContactItem;->access$200(Lcom/android/phone/EmergencyContactItem;)Landroid/widget/CheckBox;

    move-result-object v0

    # getter for: Lcom/android/phone/EmergencyContactItem;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/phone/EmergencyContactItem;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
