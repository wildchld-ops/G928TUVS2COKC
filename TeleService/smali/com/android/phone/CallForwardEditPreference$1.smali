.class Lcom/android/phone/CallForwardEditPreference$1;
.super Ljava/lang/Object;
.source "CallForwardEditPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallForwardEditPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardEditPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mTimePicker:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mTimePicker:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference;->mStartTime:Landroid/text/format/Time;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference;->mStartTime:Landroid/text/format/Time;

    iget v3, v0, Landroid/text/format/Time;->hour:I

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference;->mStartTime:Landroid/text/format/Time;

    iget v4, v0, Landroid/text/format/Time;->minute:I

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/CallForwardEditPreference;->mSelectedButton:I
    invoke-static {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->access$202(Lcom/android/phone/CallForwardEditPreference;I)I

    iget-object v6, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    invoke-static {v2}, Lcom/android/phone/CallForwardEditPreference;->access$300(Lcom/android/phone/CallForwardEditPreference;)Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    # setter for: Lcom/android/phone/CallForwardEditPreference;->mTimePicker:Landroid/app/Dialog;
    invoke-static {v6, v0}, Lcom/android/phone/CallForwardEditPreference;->access$102(Lcom/android/phone/CallForwardEditPreference;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mTimePicker:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
