# Create IAM roles here
data "aws_iam_policy_document" "ecs_task_exec_role" {
  version = latest

  statement {
    sid = ""
    effect = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type = "Service"
      identifiers = ["ecs-tasks.amazonaws.com"]
    }
  }
}

# ECS task execution role
resource "aws_iam_role" "ecs_task_exec_role" {
  name = var.ecs_task_execution_role_name
  assume_role_policy = data.aws_iam_policy_document.ecs_task_exec_role.json
}

# ECS task execution role policy attachment
resource "aws_iam_role_policy_attachment" "ecs_task_exec_role" {
  role = aws_iam_role.ecs_task_exec_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}