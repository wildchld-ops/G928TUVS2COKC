.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x270f

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    const-string v1, "EditorAction 9999 arrived"

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$4;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    const/4 v1, 0x1

    # setter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->isMonthJan:Z
    invoke-static {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1602(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Z)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
