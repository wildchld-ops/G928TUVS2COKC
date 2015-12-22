.class Lcom/ficeto/customsettings/ColorPickerDialog$6;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ficeto/customsettings/ColorPickerDialog;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ficeto/customsettings/ColorPickerDialog$6;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iput-object p2, p0, Lcom/ficeto/customsettings/ColorPickerDialog$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog$6;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/ficeto/customsettings/ColorPickerDialog;->moveCursor()V

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog$6;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/ficeto/customsettings/ColorPickerDialog;->moveTarget()V

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog$6;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
