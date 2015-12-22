.class Lcom/ficeto/customsettings/ColorPickerDialog$5;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/ficeto/customsettings/ColorPickerDialog$5;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog$5;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iget-object v0, v0, Lcom/ficeto/customsettings/ColorPickerDialog;->listener:Lcom/ficeto/customsettings/ColorPickerDialog$OnColorPickerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerDialog$5;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    iget-object v0, v0, Lcom/ficeto/customsettings/ColorPickerDialog;->listener:Lcom/ficeto/customsettings/ColorPickerDialog$OnColorPickerListener;

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerDialog$5;->this$0:Lcom/ficeto/customsettings/ColorPickerDialog;

    invoke-interface {v0, v1}, Lcom/ficeto/customsettings/ColorPickerDialog$OnColorPickerListener;->onCancel(Lcom/ficeto/customsettings/ColorPickerDialog;)V

    :cond_0
    return-void
.end method
