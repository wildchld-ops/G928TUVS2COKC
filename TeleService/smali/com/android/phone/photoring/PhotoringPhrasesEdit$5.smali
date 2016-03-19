.class Lcom/android/phone/photoring/PhotoringPhrasesEdit$5;
.super Ljava/lang/Object;
.source "PhotoringPhrasesEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoringPhrasesEdit;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$5;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$5;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    # invokes: Lcom/android/phone/photoring/PhotoringPhrasesEdit;->delItem()V
    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->access$400(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$5;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->finish()V

    return-void
.end method
