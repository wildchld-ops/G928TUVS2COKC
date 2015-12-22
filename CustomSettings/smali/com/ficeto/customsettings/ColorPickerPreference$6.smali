.class Lcom/ficeto/customsettings/ColorPickerPreference$6;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    iput-object p1, p0, Lcom/ficeto/customsettings/ColorPickerPreference$6;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference$6;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    invoke-virtual {v0}, Lcom/ficeto/customsettings/ColorPickerPreference;->moveCursor()V

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference$6;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    invoke-virtual {v0}, Lcom/ficeto/customsettings/ColorPickerPreference;->moveTarget()V

    iget-object v0, p0, Lcom/ficeto/customsettings/ColorPickerPreference$6;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    iget-object v0, v0, Lcom/ficeto/customsettings/ColorPickerPreference;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
