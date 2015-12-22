.class Lcom/ficeto/customsettings/ColorPickerPreference$1;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ficeto/customsettings/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ficeto/customsettings/ColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/ficeto/customsettings/ColorPickerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/ficeto/customsettings/ColorPickerPreference$1;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerPreference$1;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    invoke-static {v2, v0}, Lcom/ficeto/customsettings/ColorPickerPreference;->access$0(Lcom/ficeto/customsettings/ColorPickerPreference;I)V

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerPreference$1;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    iget-object v2, v2, Lcom/ficeto/customsettings/ColorPickerPreference;->alphaSlider:Landroid/widget/SeekBar;

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerPreference$1;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    iget-object v2, v2, Lcom/ficeto/customsettings/ColorPickerPreference;->currentColorHsv:[F

    invoke-static {v0, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerPreference$1;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    iget-object v2, v2, Lcom/ficeto/customsettings/ColorPickerPreference;->viewNewColor:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerPreference$1;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    iget-object v2, v2, Lcom/ficeto/customsettings/ColorPickerPreference;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference$1;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    # invokes: Lcom/ficeto/customsettings/ColorPickerPreference;->getHue()F
    invoke-static {v3}, Lcom/ficeto/customsettings/ColorPickerPreference;->access$1(Lcom/ficeto/customsettings/ColorPickerPreference;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ficeto/customsettings/ColorPickerView;->setHue(F)V

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerPreference$1;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    invoke-virtual {v2}, Lcom/ficeto/customsettings/ColorPickerPreference;->moveCursor()V

    iget-object v2, p0, Lcom/ficeto/customsettings/ColorPickerPreference$1;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    invoke-virtual {v2}, Lcom/ficeto/customsettings/ColorPickerPreference;->moveTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "TextColor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
