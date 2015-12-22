.class Landroid/widget/TimePickerSpinnerDelegate$6;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$6;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$6;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # invokes: Landroid/widget/TimePickerSpinnerDelegate;->updateInputState()V
    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->access$300(Landroid/widget/TimePickerSpinnerDelegate;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
