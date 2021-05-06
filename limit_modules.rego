package terraform

import input.tfrun as tfrun

deny[reason] {
    cost_delta = tfrun.cost_estimate.delta_monthly_cost
    cost_delta > 10
    reason := sprintf("Plan is too expensive: $%.2f, while up to $10 is allowed", [cost_delta])
}
