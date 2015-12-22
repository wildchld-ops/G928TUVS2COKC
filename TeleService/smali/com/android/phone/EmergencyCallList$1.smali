.class Lcom/android/phone/EmergencyCallList$1;
.super Ljava/lang/Object;
.source "EmergencyCallList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallList;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyCallList$1;->this$0:Lcom/android/phone/EmergencyCallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/phone/EmergencyCallList$1;->this$0:Lcom/android/phone/EmergencyCallList;

    # getter for: Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/EmergencyCallList;->access$000(Lcom/android/phone/EmergencyCallList;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/EmergencyCallList$1;->this$0:Lcom/android/phone/EmergencyCallList;

    # getter for: Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I
    invoke-static {v5}, Lcom/android/phone/EmergencyCallList;->access$100(Lcom/android/phone/EmergencyCallList;)I

    move-result v5

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "videocall"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyCallList$1;->this$0:Lcom/android/phone/EmergencyCallList;

    invoke-virtual {v2, v1}, Lcom/android/phone/EmergencyCallList;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v6}, Lcom/android/phone/EmergencyCallList;->access$200(Ljava/lang/String;Z)V

    goto :goto_0
.end method
