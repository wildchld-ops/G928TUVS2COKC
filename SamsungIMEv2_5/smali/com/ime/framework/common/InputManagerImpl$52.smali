.class Lcom/ime/framework/common/InputManagerImpl$52;
.super Ljava/lang/Object;
.source "InputManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/common/InputManagerImpl;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/InputManagerImpl;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$feature:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$52;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    iput-object p2, p0, Lcom/ime/framework/common/InputManagerImpl$52;->val$feature:Ljava/lang/String;

    iput-object p3, p0, Lcom/ime/framework/common/InputManagerImpl$52;->val$extra:Ljava/lang/String;

    iput p4, p0, Lcom/ime/framework/common/InputManagerImpl$52;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$52;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$52;->val$feature:Ljava/lang/String;

    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$52;->val$extra:Ljava/lang/String;

    iget v3, p0, Lcom/ime/framework/common/InputManagerImpl$52;->val$value:I

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/ime/framework/common/InputManagerImpl;->access$9000(Lcom/ime/framework/common/InputManagerImpl;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
