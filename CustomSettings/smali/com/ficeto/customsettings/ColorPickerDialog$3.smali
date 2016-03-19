.class Lcom/ficeto/customsettings/ColorPickerDialog$3;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/ficeto/customsettings/ColorPickerDialog$3;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog$3;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iget-object v0, v0, Lcom/ficeto/customsettings/ColorPickerDialog;->listener:Lcom/ficeto/customsettings/ColorPickerDialog$OnColorPickerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog$3;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iget-object v0, v0, Lcom/ficeto/customsettings/ColorPickerDialog;->listener:Lcom/ficeto/customsettings/ColorPickerDialog$OnColorPickerListener;

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerDialog$3;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerDialog$3;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    # invokes: Lcom/ficeto/customsettings/ColorPickerDialog;->getColor()I
    invoke-static {v2}, Lcom/ficeto/customsettings/ColorPickerDialog;->access$2(Lcom/ficeto/customsettings/ColorPickerDialog;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ficeto/customsettings/ColorPickerDialog$OnColorPickerListener;->onOk(Lcom/ficeto/customsettings/ColorPickerDialog;I)V

    :cond_0
    return-void
.end method
