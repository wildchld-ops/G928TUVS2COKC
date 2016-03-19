.class Lcom/ficeto/customsettings/ColorPickerDialog$2;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ficeto/customsettings/ColorPickerDialog;-><init>(Landroid/content/Context;ILcom/ficeto/customsettings/ColorPickerDialog$OnColorPickerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ficeto/customsettings/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/ficeto/customsettings/ColorPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ficeto/customsettings/ColorPickerDialog$2;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_5

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v3, v0, v6

    if-gez v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerDialog$2;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iget-object v3, v3, Lcom/ficeto/customsettings/ColorPickerDialog;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-virtual {v3}, Lcom/ficeto/customsettings/ColorPickerView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerDialog$2;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iget-object v3, v3, Lcom/ficeto/customsettings/ColorPickerDialog;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-virtual {v3}, Lcom/ficeto/customsettings/ColorPickerView;->getMeasuredWidth()I

    move-result v3

    int-to-float v0, v3

    :cond_2
    cmpg-float v3, v1, v6

    if-gez v3, :cond_3

    const/4 v1, 0x0

    :cond_3
    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerDialog$2;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iget-object v3, v3, Lcom/ficeto/customsettings/ColorPickerDialog;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-virtual {v3}, Lcom/ficeto/customsettings/ColorPickerView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerDialog$2;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iget-object v3, v3, Lcom/ficeto/customsettings/ColorPickerDialog;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-virtual {v3}, Lcom/ficeto/customsettings/ColorPickerView;->getMeasuredHeight()I

    move-result v3

    int-to-float v1, v3

    :cond_4
    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerDialog$2;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerDialog$2;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iget-object v4, v4, Lcom/ficeto/customsettings/ColorPickerDialog;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-virtual {v4}, Lcom/ficeto/customsettings/ColorPickerView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v5, v4

    mul-float/2addr v4, v0

    # invokes: Lcom/ficeto/customsettings/ColorPickerDialog;->setSat(F)V
    invoke-static {v3, v4}, Lcom/ficeto/customsettings/ColorPickerDialog;->access$3(Lcom/ficeto/customsettings/ColorPickerDialog;F)V

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerDialog$2;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerDialog$2;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iget-object v4, v4, Lcom/ficeto/customsettings/ColorPickerDialog;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    invoke-virtual {v4}, Lcom/ficeto/customsettings/ColorPickerView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v5, v4

    mul-float/2addr v4, v1

    sub-float v4, v5, v4

    # invokes: Lcom/ficeto/customsettings/ColorPickerDialog;->setVal(F)V
    invoke-static {v3, v4}, Lcom/ficeto/customsettings/ColorPickerDialog;->access$4(Lcom/ficeto/customsettings/ColorPickerDialog;F)V

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerDialog$2;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    invoke-virtual {v3}, Lcom/ficeto/customsettings/ColorPickerDialog;->moveTarget()V

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerDialog$2;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iget-object v3, v3, Lcom/ficeto/customsettings/ColorPickerDialog;->viewNewColor:Landroid/view/View;

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerDialog$2;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    # invokes: Lcom/ficeto/customsettings/ColorPickerDialog;->getColor()I
    invoke-static {v4}, Lcom/ficeto/customsettings/ColorPickerDialog;->access$2(Lcom/ficeto/customsettings/ColorPickerDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method
