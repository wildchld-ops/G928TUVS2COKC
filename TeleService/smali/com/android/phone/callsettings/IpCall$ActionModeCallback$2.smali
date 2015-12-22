.class Lcom/android/phone/callsettings/IpCall$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall$ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const-wide/16 v2, 0x78

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$3100(Lcom/android/phone/callsettings/IpCall;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$3100(Lcom/android/phone/callsettings/IpCall;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$2$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$2$1;-><init>(Lcom/android/phone/callsettings/IpCall$ActionModeCallback$2;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$2;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$3100(Lcom/android/phone/callsettings/IpCall;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$2$2;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$2$2;-><init>(Lcom/android/phone/callsettings/IpCall$ActionModeCallback$2;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
