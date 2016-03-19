.class Lcom/android/phone/EmergencyCallList$2;
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

    iput-object p1, p0, Lcom/android/phone/EmergencyCallList$2;->this$0:Lcom/android/phone/EmergencyCallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList$2;->this$0:Lcom/android/phone/EmergencyCallList;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallList$2;->this$0:Lcom/android/phone/EmergencyCallList;

    iget-object v3, p0, Lcom/android/phone/EmergencyCallList$2;->this$0:Lcom/android/phone/EmergencyCallList;

    # getter for: Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/EmergencyCallList;->access$000(Lcom/android/phone/EmergencyCallList;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EmergencyCallList$2;->this$0:Lcom/android/phone/EmergencyCallList;

    # getter for: Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I
    invoke-static {v4}, Lcom/android/phone/EmergencyCallList;->access$100(Lcom/android/phone/EmergencyCallList;)I

    move-result v4

    aget-object v3, v3, v4

    # invokes: Lcom/android/phone/EmergencyCallList;->createCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/android/phone/EmergencyCallList;->access$300(Lcom/android/phone/EmergencyCallList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EmergencyCallList;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityNotFoundException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2}, Lcom/android/phone/EmergencyCallList;->access$200(Ljava/lang/String;Z)V

    goto :goto_0
.end method
