.class Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const-wide/16 v2, 0x78

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$900(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$900(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1$1;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1$1;-><init>(Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$900(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1$2;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1$2;-><init>(Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
