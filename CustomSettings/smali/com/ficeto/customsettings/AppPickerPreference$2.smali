.class Lcom/ficeto/customsettings/AppPickerPreference$2;
.super Ljava/lang/Object;
.source "AppPickerPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ficeto/customsettings/AppPickerPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ficeto/customsettings/AppPickerPreference;


# direct methods
.method constructor <init>(Lcom/ficeto/customsettings/AppPickerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/ficeto/customsettings/AppPickerPreference$2;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

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
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$2;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/ficeto/customsettings/AppPickerPreference;->access$4(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$2;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/ficeto/customsettings/AppPickerPreference;->access$4(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/ficeto/adapters/IconListAdapter;

    invoke-virtual {v0}, Lcom/ficeto/adapters/IconListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
