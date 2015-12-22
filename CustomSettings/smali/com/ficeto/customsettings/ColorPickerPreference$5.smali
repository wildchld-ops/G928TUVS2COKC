.class Lcom/ficeto/customsettings/ColorPickerPreference$5;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/ficeto/customsettings/ColorPickerPreference$5;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference$5;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    iget-object v1, p0, Lcom/ficeto/customsettings/ColorPickerPreference$5;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    # invokes: Lcom/ficeto/customsettings/ColorPickerPreference;->getColor()I
    invoke-static {v1}, Lcom/ficeto/customsettings/ColorPickerPreference;->access$3(Lcom/ficeto/customsettings/ColorPickerPreference;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ficeto/customsettings/ColorPickerPreference;->setColor(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
