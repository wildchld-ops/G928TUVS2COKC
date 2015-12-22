.class Lcom/android/phone/EmergencyDialer$6;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer;->showSoftInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$6;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$6;->this$0:Lcom/android/phone/EmergencyDialer;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$6;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/EmergencyDialer;->access$300(Lcom/android/phone/EmergencyDialer;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
