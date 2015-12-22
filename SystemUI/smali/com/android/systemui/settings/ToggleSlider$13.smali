.class Lcom/android/systemui/settings/ToggleSlider$13;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleSlider;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$13;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$13;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->access$2602(Lcom/android/systemui/settings/ToggleSlider;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
