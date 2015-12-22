.class Lcom/android/phone/TtyListPreference$4;
.super Ljava/lang/Object;
.source "TtyListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TtyListPreference;->createDialogTty(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TtyListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/TtyListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TtyListPreference$4;->this$0:Lcom/android/phone/TtyListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/TtyListPreference$4;->this$0:Lcom/android/phone/TtyListPreference;

    iget-object v1, p0, Lcom/android/phone/TtyListPreference$4;->this$0:Lcom/android/phone/TtyListPreference;

    # getter for: Lcom/android/phone/TtyListPreference;->prvTtyMode:I
    invoke-static {v1}, Lcom/android/phone/TtyListPreference;->access$700(Lcom/android/phone/TtyListPreference;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/TtyListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/TtyListPreference$4;->this$0:Lcom/android/phone/TtyListPreference;

    # getter for: Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/TtyListPreference;->access$300(Lcom/android/phone/TtyListPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    iget-object v2, p0, Lcom/android/phone/TtyListPreference$4;->this$0:Lcom/android/phone/TtyListPreference;

    # getter for: Lcom/android/phone/TtyListPreference;->prvTtyMode:I
    invoke-static {v2}, Lcom/android/phone/TtyListPreference;->access$700(Lcom/android/phone/TtyListPreference;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
