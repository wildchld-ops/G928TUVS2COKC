.class Lcom/android/phone/photoring/PhotoringPhrasesEdit$3;
.super Ljava/lang/Object;
.source "PhotoringPhrasesEdit.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoringPhrasesEdit;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$3;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$3;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    # getter for: Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->access$300(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$3;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    # getter for: Lcom/android/phone/photoring/PhotoringPhrasesEdit;->mtvPhrase:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->access$300(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
